# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-28 03:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('facebook_mining', '0007_likes'),
    ]

    operations = [
        migrations.CreateModel(
            name='Twitter',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_id', models.CharField(blank=True, max_length=255, null=True)),
                ('user', models.CharField(blank=True, max_length=255, null=True)),
                ('fullname', models.CharField(blank=True, max_length=255, null=True)),
                ('timestamp', models.DateField(blank=True, null=True)),
                ('tweet', models.TextField(blank=True, max_length=1000000, null=True)),
            ],
            options={
                'verbose_name': 'Twitter',
                'verbose_name_plural': 'Twitter',
            },
        ),
        migrations.AlterField(
            model_name='likes',
            name='feed_id',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='likes',
            name='page_id',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='likes',
            name='user_id',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='likes',
            name='user_name',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
