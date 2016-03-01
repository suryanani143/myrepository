# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sampleapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='school',
            field=models.CharField(default='myschool', max_length=15),
            preserve_default=False,
        ),
    ]
