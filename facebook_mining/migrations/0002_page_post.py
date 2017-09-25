# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-25 06:37
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('facebook_mining', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Page_post',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('page_id', models.CharField(blank=True, max_length=100, null=True, unique=True)),
                ('post_id', models.CharField(blank=True, max_length=100, null=True, unique=True)),
                ('name', models.CharField(blank=True, max_length=100, null=True)),
                ('message', models.CharField(blank=True, max_length=9999, null=True)),
            ],
            options={
                'verbose_name': 'Page_post',
                'verbose_name_plural': 'Page_posts',
            },
        ),
    ]