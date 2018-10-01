using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace ThreatSystem.Migrations
{
    public partial class values2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "value",
                table: "Threats");

            migrationBuilder.AddColumn<int>(
                name: "value",
                table: "Measures",
                type: "int4",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "value",
                table: "Measures");

            migrationBuilder.AddColumn<int>(
                name: "value",
                table: "Threats",
                nullable: false,
                defaultValue: 0);
        }
    }
}
