.class public Lazr;
.super Ljava/lang/Object;
.source "GlobalConfigMgr.java"


# static fields
.field private static a:Lazr;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lazr;->b:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lazr;->c:Landroid/content/SharedPreferences;

    .line 53
    iget-object v0, p0, Lazr;->c:Landroid/content/SharedPreferences;

    const-string v1, "key_skin_image_pull_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lazr;->d:J

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;)Lazr;
    .locals 2
    .parameter

    .prologue
    .line 57
    sget-object v0, Lazr;->a:Lazr;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lazr;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lazr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lazr;->a:Lazr;

    .line 60
    :cond_0
    sget-object v0, Lazr;->a:Lazr;

    return-object v0
.end method

.method private k()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lazr;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lazr;->b:Landroid/content/Context;

    const-string v1, "global_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lazr;->c:Landroid/content/SharedPreferences;

    .line 68
    :cond_0
    iget-object v0, p0, Lazr;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_stamp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 116
    return-void
.end method

.method public a(IZJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    const-wide/16 v1, 0x3e8

    div-long v1, p5, v1

    .line 142
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 143
    if-eqz p2, :cond_1

    .line 144
    const-string v3, "usb_screenon_count"

    invoke-interface {v0, v3, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string v3, "usb_screenon_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    :cond_0
    :goto_0
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 160
    return-void

    .line 147
    :cond_1
    const-string v3, "usb_screenoff_count"

    invoke-interface {v0, v3, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v3, "usb_screenoff_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 150
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 151
    if-eqz p2, :cond_3

    .line 152
    const-string v3, "ac_screenon_count"

    invoke-interface {v0, v3, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v3, "ac_screenon_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 155
    :cond_3
    const-string v3, "ac_screenoff_count"

    invoke-interface {v0, v3, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v3, "ac_screenoff_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status_report_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 215
    return-void
.end method

.method public a(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pps_count"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pps_time"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 127
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "guide_viewed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 79
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    const-string v2, "guide_viewed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a(IZ)[J
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 167
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    new-array v1, v2, [J

    .line 169
    aput-wide v4, v1, v7

    .line 170
    aput-wide v4, v1, v6

    .line 172
    if-ne p1, v2, :cond_2

    .line 173
    if-eqz p2, :cond_1

    .line 174
    const-string v2, "usb_screenon_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 175
    const-string v2, "usb_screenon_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    .line 189
    :cond_0
    :goto_0
    aget-wide v2, v1, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    aput-wide v2, v1, v6

    .line 190
    return-object v1

    .line 177
    :cond_1
    const-string v2, "usb_screenoff_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 178
    const-string v2, "usb_screenoff_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    goto :goto_0

    .line 180
    :cond_2
    if-ne p1, v6, :cond_0

    .line 181
    if-eqz p2, :cond_3

    .line 182
    const-string v2, "ac_screenon_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 183
    const-string v2, "ac_screenon_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    goto :goto_0

    .line 185
    :cond_3
    const-string v2, "ac_screenoff_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    .line 186
    const-string v2, "ac_screenoff_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 203
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "battery_scale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 205
    return-void
.end method

.method public b(J)V
    .locals 4
    .parameter

    .prologue
    .line 255
    iput-wide p1, p0, Lazr;->d:J

    .line 256
    iget-object v0, p0, Lazr;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    const-string v1, "key_skin_image_pull_time"

    iget-wide v2, p0, Lazr;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 259
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    const-string v1, "key_purchased_toast"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 247
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    const-string v2, "shortcut_onekey"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 89
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shortcut_onekey"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 101
    return-void
.end method

.method public d()I
    .locals 3

    .prologue
    .line 109
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    const-string v1, "update_stamp"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()[J
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 130
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [J

    .line 132
    const/4 v2, 0x0

    const-string v3, "pps_count"

    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 133
    const/4 v2, 0x1

    const-string v3, "pps_time"

    invoke-interface {v0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 134
    return-object v1
.end method

.method public f()I
    .locals 3

    .prologue
    const/16 v0, 0x64

    .line 194
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    const-string v2, "battery_scale"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 196
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 199
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public g()J
    .locals 4

    .prologue
    .line 208
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    const-string v1, "status_report_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lazr;->b:Landroid/content/Context;

    invoke-static {v0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    .prologue
    .line 250
    invoke-direct {p0}, Lazr;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    const-string v1, "key_purchased_toast"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lazr;->d:J

    return-wide v0
.end method
