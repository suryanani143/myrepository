# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=30)),
                ('age', models.CharField(max_length=5)),
                ('standard', models.CharField(max_length=3)),
                ('dob', models.DateTimeField()),
                ('rollno', models.CharField(max_length=10)),
            ],
        ),
    ]
