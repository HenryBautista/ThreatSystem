using Microsoft.EntityFrameworkCore.Migrations;

namespace ThreatSystem.Migrations
{
    public partial class correct : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Appreciation_Measures_MeasureId",
                table: "Appreciation");

            migrationBuilder.DropForeignKey(
                name: "FK_Categories_Goods_GoodsId",
                table: "Categories");

            migrationBuilder.DropForeignKey(
                name: "FK_Goods_Threats_ThreatId",
                table: "Goods");

            migrationBuilder.DropForeignKey(
                name: "FK_Threats_Measures_MeasureId",
                table: "Threats");

            migrationBuilder.DropIndex(
                name: "IX_Categories_GoodsId",
                table: "Categories");

            migrationBuilder.DropColumn(
                name: "GoodsId",
                table: "Categories");

            migrationBuilder.RenameColumn(
                name: "MeasureId",
                table: "Threats",
                newName: "GoodsId");

            migrationBuilder.RenameIndex(
                name: "IX_Threats_MeasureId",
                table: "Threats",
                newName: "IX_Threats_GoodsId");

            migrationBuilder.RenameColumn(
                name: "ThreatId",
                table: "Goods",
                newName: "CategoryId");

            migrationBuilder.RenameIndex(
                name: "IX_Goods_ThreatId",
                table: "Goods",
                newName: "IX_Goods_CategoryId");

            migrationBuilder.RenameColumn(
                name: "MeasureId",
                table: "Appreciation",
                newName: "ThreatId");

            migrationBuilder.RenameIndex(
                name: "IX_Appreciation_MeasureId",
                table: "Appreciation",
                newName: "IX_Appreciation_ThreatId");

            migrationBuilder.AddColumn<int>(
                name: "AppreciationId",
                table: "Measures",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Measures_AppreciationId",
                table: "Measures",
                column: "AppreciationId");

            migrationBuilder.AddForeignKey(
                name: "FK_Appreciation_Threats_ThreatId",
                table: "Appreciation",
                column: "ThreatId",
                principalTable: "Threats",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Goods_Categories_CategoryId",
                table: "Goods",
                column: "CategoryId",
                principalTable: "Categories",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Measures_Appreciation_AppreciationId",
                table: "Measures",
                column: "AppreciationId",
                principalTable: "Appreciation",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Threats_Goods_GoodsId",
                table: "Threats",
                column: "GoodsId",
                principalTable: "Goods",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Appreciation_Threats_ThreatId",
                table: "Appreciation");

            migrationBuilder.DropForeignKey(
                name: "FK_Goods_Categories_CategoryId",
                table: "Goods");

            migrationBuilder.DropForeignKey(
                name: "FK_Measures_Appreciation_AppreciationId",
                table: "Measures");

            migrationBuilder.DropForeignKey(
                name: "FK_Threats_Goods_GoodsId",
                table: "Threats");

            migrationBuilder.DropIndex(
                name: "IX_Measures_AppreciationId",
                table: "Measures");

            migrationBuilder.DropColumn(
                name: "AppreciationId",
                table: "Measures");

            migrationBuilder.RenameColumn(
                name: "GoodsId",
                table: "Threats",
                newName: "MeasureId");

            migrationBuilder.RenameIndex(
                name: "IX_Threats_GoodsId",
                table: "Threats",
                newName: "IX_Threats_MeasureId");

            migrationBuilder.RenameColumn(
                name: "CategoryId",
                table: "Goods",
                newName: "ThreatId");

            migrationBuilder.RenameIndex(
                name: "IX_Goods_CategoryId",
                table: "Goods",
                newName: "IX_Goods_ThreatId");

            migrationBuilder.RenameColumn(
                name: "ThreatId",
                table: "Appreciation",
                newName: "MeasureId");

            migrationBuilder.RenameIndex(
                name: "IX_Appreciation_ThreatId",
                table: "Appreciation",
                newName: "IX_Appreciation_MeasureId");

            migrationBuilder.AddColumn<int>(
                name: "GoodsId",
                table: "Categories",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Categories_GoodsId",
                table: "Categories",
                column: "GoodsId");

            migrationBuilder.AddForeignKey(
                name: "FK_Appreciation_Measures_MeasureId",
                table: "Appreciation",
                column: "MeasureId",
                principalTable: "Measures",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Categories_Goods_GoodsId",
                table: "Categories",
                column: "GoodsId",
                principalTable: "Goods",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Goods_Threats_ThreatId",
                table: "Goods",
                column: "ThreatId",
                principalTable: "Threats",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Threats_Measures_MeasureId",
                table: "Threats",
                column: "MeasureId",
                principalTable: "Measures",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
