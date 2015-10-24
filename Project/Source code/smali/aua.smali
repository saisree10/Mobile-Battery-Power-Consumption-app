.class public Laua;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ChargingDB.java"


# instance fields
.field final synthetic a:Latz;


# direct methods
.method public constructor <init>(Latz;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Laua;->a:Latz;

    .line 43
    const-string v0, "charging.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const-string v0, "CREATE TABLE level(_id INTEGER PRIMARY KEY, start_level INTEGER, end_level INTEGER, data INTEGER, count INTEGER, type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "CREATE TABLE result(_id INTEGER PRIMARY KEY, level INTEGER, data INTEGER, type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    return-void
.end method
