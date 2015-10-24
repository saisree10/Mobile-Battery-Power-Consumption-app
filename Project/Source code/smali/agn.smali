.class public Lagn;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudRemainTimeDBHelper.java"


# instance fields
.field final synthetic a:Lagm;


# direct methods
.method public constructor <init>(Lagm;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lagn;->a:Lagm;

    .line 148
    const-string v0, "cloudremaintime.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 149
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    const-string v0, "CREATE TABLE averagetime(_id INTEGER PRIMARY KEY, from_level INTEGER, to_level INTEGER, time_average INTEGER, level_count INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    return-void
.end method
