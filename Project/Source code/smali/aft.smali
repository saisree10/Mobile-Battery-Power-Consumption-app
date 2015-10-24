.class public Laft;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CalendarDBHelper.java"


# instance fields
.field final synthetic a:Lafs;


# direct methods
.method public constructor <init>(Lafs;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Laft;->a:Lafs;

    .line 46
    const-string v0, "dx_chargings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    const-string v0, "CREATE TABLE chargings(id INTEGER PRIMARY KEY,year INTEGER,month INTEGER,day INTEGER,normal INTEGER,health INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const-string v0, "CalendarDBHelper"

    const-string v1, "onUpgrade the DataBase of dx_chargings, but do nothing"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method
