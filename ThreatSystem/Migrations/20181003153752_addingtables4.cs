using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using System;
using System.Collections.Generic;

namespace ThreatSystem.Migrations
{
    public partial class addingtables4 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "CategoriesIncidents",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int4", nullable: false)
                        .Annotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn),
                    CategoryId = table.Column<int>(type: "int4", nullable: false),
                    IncidenceId = table.Column<int>(type: "int4", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CategoriesIncidents", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CategoriesIncidents_Categories_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "Categories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CategoriesIncidents_Incidents_IncidenceId",
                        column: x => x.IncidenceId,
                        principalTable: "Incidents",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CategoriesIncidents_CategoryId",
                table: "CategoriesIncidents",
                column: "CategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_CategoriesIncidents_IncidenceId",
                table: "CategoriesIncidents",
                column: "IncidenceId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CategoriesIncidents");
        }
    }
}
