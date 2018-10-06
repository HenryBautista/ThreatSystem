using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace ThreatSystem.Migrations
{
    public partial class addingtables3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Categories_Incidents_IncidenceId",
                table: "Categories");

            migrationBuilder.DropIndex(
                name: "IX_Categories_IncidenceId",
                table: "Categories");

            migrationBuilder.DropColumn(
                name: "IncidenceId",
                table: "Categories");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "IncidenceId",
                table: "Categories",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Categories_IncidenceId",
                table: "Categories",
                column: "IncidenceId");

            migrationBuilder.AddForeignKey(
                name: "FK_Categories_Incidents_IncidenceId",
                table: "Categories",
                column: "IncidenceId",
                principalTable: "Incidents",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
