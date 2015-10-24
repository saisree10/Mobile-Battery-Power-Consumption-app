.class public Lyx;
.super Ljava/lang/Object;
.source "MessageBoxDbTable.java"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lyx;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS messages_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_deadline INTEGER,msg_text TEXT,icon_url TEXT,click_action INTEGER,click_params TEXT,guide_page TEXT,msg_status INTEGER,msg_type INTEGER,msg_recommend_id TEXT,msg_time INTEGER,del INTEGER,st INTEGER,UNIQUE (msg_recommend_id) ON CONFLICT IGNORE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    const-string v0, "ALTER TABLE messages_list ADD COLUMN del INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "ALTER TABLE messages_list ADD COLUMN st INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 70
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "msg_deadline"

    aput-object v0, v2, v8

    const-string v0, "msg_text"

    aput-object v0, v2, v11

    const-string v0, "icon_url"

    aput-object v0, v2, v12

    const/4 v0, 0x4

    const-string v1, "click_action"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "click_params"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "guide_page"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "msg_status"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "msg_type"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "msg_recommend_id"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "msg_time"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "del"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "st"

    aput-object v1, v2, v0

    .line 86
    const-string v0, "msg_time desc"

    .line 89
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 90
    const-string v3, "msg_status= ?"

    .line 91
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 96
    :goto_0
    iget-object v0, p0, Lyx;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages_list"

    const-string v7, "msg_time desc"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const/16 v0, 0xb

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/16 v2, 0x1bc

    if-eq v0, v2, :cond_0

    .line 103
    new-instance v2, Lzd;

    invoke-direct {v2}, Lzd;-><init>()V

    .line 104
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lzd;->b:I

    .line 105
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lzd;->c:Ljava/lang/Long;

    .line 106
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lzd;->d:Ljava/lang/String;

    .line 107
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lzd;->e:Ljava/lang/String;

    .line 108
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lzd;->i:I

    .line 109
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lzd;->f:Ljava/lang/String;

    .line 110
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lzd;->l:Ljava/lang/String;

    .line 111
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lzd;->g:I

    .line 112
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lzd;->a:I

    .line 113
    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lzd;->k:Ljava/lang/String;

    .line 114
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lzd;->h:J

    .line 115
    const/16 v0, 0xc

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    :goto_2
    iput-boolean v0, v2, Lzd;->j:Z

    .line 116
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v0, v9

    .line 115
    goto :goto_2

    .line 118
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    return-object v10

    :cond_3
    move-object v4, v5

    move-object v3, v5

    goto/16 :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    const-string v0, "msg_status=?"

    .line 141
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 144
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 145
    const-string v3, "msg_status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    iget-object v3, p0, Lyx;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "messages_list"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public a(Landroid/content/Context;Lzd;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 151
    const-string v1, "msg_deadline"

    iget-object v2, p2, Lzd;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v1, "msg_text"

    iget-object v2, p2, Lzd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "icon_url"

    iget-object v2, p2, Lzd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "click_action"

    iget v2, p2, Lzd;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v1, "click_params"

    iget-object v2, p2, Lzd;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "guide_page"

    iget-object v2, p2, Lzd;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "msg_status"

    iget v2, p2, Lzd;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "msg_type"

    iget v2, p2, Lzd;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "msg_recommend_id"

    iget-object v2, p2, Lzd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "msg_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string v1, "st"

    iget-boolean v2, p2, Lzd;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    iget-object v1, p0, Lyx;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 163
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 164
    invoke-static {p1}, Laar;->a(Landroid/content/Context;)Laar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laar;->a(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method public a(Lzd;)V
    .locals 5
    .parameter

    .prologue
    .line 123
    const-string v0, "_id=?"

    .line 124
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lzd;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 127
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 128
    const-string v3, "msg_deadline"

    iget-object v4, p1, Lzd;->c:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v3, "msg_text"

    iget-object v4, p1, Lzd;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "icon_url"

    iget-object v4, p1, Lzd;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v3, "click_action"

    iget v4, p1, Lzd;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v3, "click_params"

    iget-object v4, p1, Lzd;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "guide_page"

    iget-object v4, p1, Lzd;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "msg_status"

    iget v4, p1, Lzd;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v3, "msg_type"

    iget v4, p1, Lzd;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    iget-object v3, p0, Lyx;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "messages_list"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public b(Lzd;)V
    .locals 5
    .parameter

    .prologue
    .line 172
    const-string v0, "_id=?"

    .line 173
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lzd;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 176
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 177
    const-string v3, "del"

    const/16 v4, 0x1bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    iget-object v3, p0, Lyx;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "messages_list"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    return-void
.end method
