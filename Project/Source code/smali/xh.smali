.class public Lxh;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 14
    const-string v0, "apps_diagnosis.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-static {p1}, Lxg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    invoke-static {p1}, Lxf;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    invoke-static {p1}, Lxe;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    invoke-static {p1}, Lxj;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    invoke-static {p1}, Lxd;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    invoke-static {p1}, Lxk;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lxh;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    return-void
.end method
