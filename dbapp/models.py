# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Visitor(models.Model):
    fname = models.CharField(max_length=8, blank=True, null=True)
    minit = models.CharField(max_length=2, blank=True, null=True)
    lname = models.CharField(max_length=8, blank=True, null=True)
    nuid = models.CharField(primary_key=True, max_length=9)
    email = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'visitor'


class Admin(models.Model):
    nuid = models.CharField(db_column='NUID', primary_key=True, max_length=9)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=320)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Admin'


class Advisor(models.Model):
    nuid = models.CharField(db_column='NUID', primary_key=True, max_length=9)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=320)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.
    department = models.CharField(db_column='Department', max_length=2)  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Advisor'


class Course(models.Model):
    course_id = models.CharField(db_column='Course_id', primary_key=True, max_length=4)  # Field name made lowercase.
    course_name = models.CharField(db_column='Course_name', max_length=50)  # Field name made lowercase.
    semester = models.CharField(db_column='Semester', max_length=15)  # Field name made lowercase.
    max_capacity = models.IntegerField(db_column='Max_capacity')  # Field name made lowercase.
    department = models.CharField(db_column='Department', max_length=2)  # Field name made lowercase.
    rating = models.DecimalField(db_column='Rating', max_digits=2, decimal_places=1, blank=True, null=True)  # Field name made lowercase.
    course_type = models.CharField(db_column='Course_type', max_length=15)  # Field name made lowercase.
    instructor = models.ForeignKey('Instructor', models.DO_NOTHING, db_column='Instructor_id')  # Field name made lowercase.
    course_time = models.TimeField(db_column='Course_time', blank=True, null=True)  # Field name made lowercase.
    course_day = models.CharField(db_column='Course_day', max_length=3, blank=True, null=True)  # Field name made lowercase.
    classroom = models.ForeignKey('Room', models.DO_NOTHING, db_column='ClassRoom', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Course'


class Instructor(models.Model):
    nuid = models.CharField(db_column='NUID', primary_key=True, max_length=9)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=320)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Instructor'


class Message(models.Model):
    message_id = models.CharField(db_column='Message_id', primary_key=True, max_length=5)  # Field name made lowercase.
    receiver_nuid = models.ForeignKey(Advisor, models.DO_NOTHING, db_column='Receiver_nuid')  # Field name made lowercase.
    sender_nuid = models.ForeignKey('Student', models.DO_NOTHING, db_column='Sender_nuid')  # Field name made lowercase.
    message_time = models.DateField(db_column='Message_time')  # Field name made lowercase.
    content = models.CharField(db_column='Content', max_length=100, blank=True, null=True)  # Field name made lowercase.
    replied = models.TextField(db_column='Replied')  # Field name made lowercase. This field type is a guess.

    class Meta:
        #managed = False
        db_table = 'Message'


class RegistrationList(models.Model):
    course = models.ForeignKey(Course, models.DO_NOTHING, db_column='Course_id')  # Field name made lowercase.
    snuid = models.ForeignKey('Student', models.DO_NOTHING, db_column='SNuid')  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Registration_List'


class RegistrationTicket(models.Model):
    ticket_id = models.AutoField(db_column='Ticket_id', primary_key=True)  # Field name made lowercase.
    course = models.ForeignKey(Course, models.DO_NOTHING, db_column='Course_id')  # Field name made lowercase.
    snuid = models.ForeignKey('Student', models.DO_NOTHING, db_column='SNuid')  # Field name made lowercase.
    ticket_time = models.DateField(db_column='Ticket_time')  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Registration_Ticket'


class Room(models.Model):
    room_id = models.CharField(db_column='Room_id', primary_key=True, max_length=5)  # Field name made lowercase.
    building = models.CharField(db_column='Building', max_length=45)  # Field name made lowercase.
    floor = models.IntegerField(db_column='Floor')  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Room'


class Student(models.Model):
    nuid = models.CharField(db_column='NUID', primary_key=True, max_length=9)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=320)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.
    visa_type = models.IntegerField(db_column='Visa_type')  # Field name made lowercase.
    department = models.CharField(db_column='Department', max_length=2)  # Field name made lowercase.
    credits = models.IntegerField(db_column='Credits')  # Field name made lowercase.
    advisor = models.CharField(db_column='Advisor', max_length=9)  # Field name made lowercase.

    class Meta:
        #managed = False
        db_table = 'Student'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'
