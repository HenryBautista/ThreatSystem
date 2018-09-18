using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace ThreatSystem.Migrations
{
    public partial class fixdatacons : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Appreciation_Threats_ThreatId",
                table: "Appreciation");

            migrationBuilder.DropIndex(
                name: "IX_Appreciation_ThreatId",
                table: "Appreciation");

            migrationBuilder.DropColumn(
                name: "ThreatId",
                table: "Appreciation");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "ThreatId",
                table: "Appreciation",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Appreciation_ThreatId",
                table: "Appreciation",
                column: "ThreatId");

            migrationBuilder.AddForeignKey(
                name: "FK_Appreciation_Threats_ThreatId",
                table: "Appreciation",
                column: "ThreatId",
                principalTable: "Threats",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
