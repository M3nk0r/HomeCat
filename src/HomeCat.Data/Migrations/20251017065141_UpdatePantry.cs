using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Data.HomeCat.Data.Migrations
{
    /// <inheritdoc />
    public partial class UpdatePantry : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Pantry",
                table: "Pantry");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Pantry",
                table: "Pantry",
                columns: new[] { "Id", "UserId" });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Pantry",
                table: "Pantry");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Pantry",
                table: "Pantry",
                column: "Id");
        }
    }
}
