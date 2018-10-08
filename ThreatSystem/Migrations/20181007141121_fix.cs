using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace ThreatSystem.Migrations
{
    public partial class fix : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MazValue",
                table: "Risks");

            migrationBuilder.AddColumn<int>(
                name: "MaxValue",
                table: "Risks",
                type: "int4",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MaxValue",
                table: "Risks");

            migrationBuilder.AddColumn<int>(
                name: "MazValue",
                table: "Risks",
                nullable: false,
                defaultValue: 0);
        }
    }
}
