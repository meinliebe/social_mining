# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-28 03:58
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('facebook_mining', '0009_auto_20170928_1036'),
    ]

    operations = [
        migrations.AddField(
            model_name='twitter',
            name='keyword',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]