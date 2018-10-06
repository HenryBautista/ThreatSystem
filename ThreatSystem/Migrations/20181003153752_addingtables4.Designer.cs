﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using System;
using ThreatSystem.Persistence;

namespace ThreatSystem.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20181003153752_addingtables4")]
    partial class addingtables4
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn)
                .HasAnnotation("ProductVersion", "2.0.0-rtm-26452");

            modelBuilder.Entity("ThreatSystem.Models.Appreciation", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description")
                        .HasMaxLength(200);

                    b.Property<string>("Initials")
                        .HasMaxLength(10);

                    b.Property<string>("Name")
                        .HasMaxLength(50);

                    b.HasKey("Id");

                    b.ToTable("Appreciation");
                });

            modelBuilder.Entity("ThreatSystem.Models.Category", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description")
                        .HasMaxLength(200);

                    b.Property<string>("Name")
                        .HasMaxLength(50);

                    b.HasKey("Id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("ThreatSystem.Models.CategoryIncidence", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("CategoryId");

                    b.Property<int>("IncidenceId");

                    b.HasKey("Id");

                    b.HasIndex("CategoryId");

                    b.HasIndex("IncidenceId");

                    b.ToTable("CategoriesIncidents");
                });

            modelBuilder.Entity("ThreatSystem.Models.Goods", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("CategoryId");

                    b.Property<string>("Description")
                        .HasMaxLength(200);

                    b.Property<string>("Name")
                        .HasMaxLength(50);

                    b.HasKey("Id");

                    b.HasIndex("CategoryId");

                    b.ToTable("Goods");
                });

            modelBuilder.Entity("ThreatSystem.Models.Incidence", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("IncidenceTypeId");

                    b.Property<string>("Name")
                        .HasMaxLength(100);

                    b.HasKey("Id");

                    b.HasIndex("IncidenceTypeId");

                    b.ToTable("Incidents");
                });

            modelBuilder.Entity("ThreatSystem.Models.IncidenceType", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name")
                        .HasMaxLength(100);

                    b.HasKey("Id");

                    b.ToTable("IncidentsTypes");
                });

            modelBuilder.Entity("ThreatSystem.Models.Measure", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AppreciationId");

                    b.Property<string>("Initials")
                        .HasMaxLength(10);

                    b.Property<string>("Name")
                        .HasMaxLength(50);

                    b.Property<int>("value");

                    b.HasKey("Id");

                    b.HasIndex("AppreciationId");

                    b.ToTable("Measures");
                });

            modelBuilder.Entity("ThreatSystem.Models.Threat", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description")
                        .HasMaxLength(200);

                    b.Property<int>("GoodsId");

                    b.Property<string>("Name")
                        .HasMaxLength(50);

                    b.Property<string>("initials")
                        .HasMaxLength(10);

                    b.HasKey("Id");

                    b.HasIndex("GoodsId");

                    b.ToTable("Threats");
                });

            modelBuilder.Entity("ThreatSystem.Models.CategoryIncidence", b =>
                {
                    b.HasOne("ThreatSystem.Models.Category", "Category")
                        .WithMany()
                        .HasForeignKey("CategoryId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("ThreatSystem.Models.Incidence", "Incidence")
                        .WithMany()
                        .HasForeignKey("IncidenceId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("ThreatSystem.Models.Goods", b =>
                {
                    b.HasOne("ThreatSystem.Models.Category", "Category")
                        .WithMany()
                        .HasForeignKey("CategoryId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("ThreatSystem.Models.Incidence", b =>
                {
                    b.HasOne("ThreatSystem.Models.IncidenceType", "IncidenceType")
                        .WithMany()
                        .HasForeignKey("IncidenceTypeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("ThreatSystem.Models.Measure", b =>
                {
                    b.HasOne("ThreatSystem.Models.Appreciation", "Appreciation")
                        .WithMany()
                        .HasForeignKey("AppreciationId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("ThreatSystem.Models.Threat", b =>
                {
                    b.HasOne("ThreatSystem.Models.Goods", "Goods")
                        .WithMany()
                        .HasForeignKey("GoodsId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
