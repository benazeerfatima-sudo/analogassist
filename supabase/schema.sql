create table profiles (id uuid primary key references auth.users on delete cascade, role text not null default 'student' check (role in ('student','admin')), display_name text);
create table conversations (id uuid primary key default gen_random_uuid(), student_id uuid not null references profiles(id), created_at timestamptz default now(), updated_at timestamptz default now());
create table messages (id uuid primary key default gen_random_uuid(), conversation_id uuid not null references conversations(id) on delete cascade, sender text not null check (sender in ('student','assistant','admin')), body text not null, image_path text, created_at timestamptz default now());
alter table profiles enable row level security; alter table conversations enable row level security; alter table messages enable row level security;
create policy "students see own profile" on profiles for select using (id=auth.uid());
create policy "students see own conversations" on conversations for select using (student_id=auth.uid());
create policy "students create conversations" on conversations for insert with check (student_id=auth.uid());
create policy "students see own messages" on messages for select using (exists(select 1 from conversations c where c.id=conversation_id and c.student_id=auth.uid()));
-- Add admin policies after creating an admin user: update profiles set role='admin' where id='USER_UUID';
