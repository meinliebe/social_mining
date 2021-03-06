# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-24 23:56
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Mining',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('facebook_id', models.CharField(blank=True, max_length=100, null=True, unique=True)),
                ('name', models.CharField(blank=True, max_length=500, null=True)),
                ('category', models.CharField(blank=True, max_length=500, null=True)),
                ('likes', models.IntegerField(blank=True, null=True)),
                ('location', models.CharField(blank=True, max_length=200, null=True)),
                ('city', models.CharField(blank=True, max_length=200, null=True)),
            ],
            options={
                'verbose_name': 'MINING',
                'verbose_name_plural': 'MINING',
            },
        ),
    ]
