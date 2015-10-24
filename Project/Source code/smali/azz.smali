.class public Lazz;
.super Ljava/lang/Object;
.source "RateManager.java"


# static fields
.field private static a:Lazz;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private d:Lbab;

.field private e:Z

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v4, p0, Lazz;->e:Z

    .line 86
    iput-object p1, p0, Lazz;->b:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lazz;->b:Landroid/content/Context;

    const-string v1, "rate_record"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    .line 88
    iget-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    const-string v1, "had_rated"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lazz;->e:Z

    .line 89
    iget-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lbab;->a:Lbab;

    invoke-virtual {v1}, Lbab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lazz;->f:J

    .line 90
    iget-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lbab;->c:Lbab;

    invoke-virtual {v1}, Lbab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lazz;->g:J

    .line 91
    iget-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lbab;->b:Lbab;

    invoke-virtual {v1}, Lbab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lazz;->h:J

    .line 92
    iget-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    sget-object v1, Lbab;->d:Lbab;

    invoke-virtual {v1}, Lbab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lazz;->i:J

    .line 95
    invoke-static {p1}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    new-instance v1, Lbac;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbac;-><init>(Lazz;Lbaa;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "go_rate"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lbc;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 97
    return-void
.end method

.method public static a(Landroid/content/Context;)Lazz;
    .locals 1
    .parameter

    .prologue
    .line 79
    sget-object v0, Lazz;->a:Lazz;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lazz;

    invoke-direct {v0, p0}, Lazz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lazz;->a:Lazz;

    .line 82
    :cond_0
    sget-object v0, Lazz;->a:Lazz;

    return-object v0
.end method

.method static synthetic a(Lazz;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lazz;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    return-void
.end method

.method static synthetic a(Lazz;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-boolean v0, p0, Lazz;->e:Z

    return v0
.end method

.method static synthetic a(Lazz;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lazz;->e:Z

    return p1
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://market.android.com/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    const-string v1, "com.android.vending"

    invoke-static {p0, v1}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 234
    :goto_1
    return-object v0

    .line 224
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://www.google.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 228
    if-nez v1, :cond_1

    .line 229
    const/4 v0, 0x0

    goto :goto_1

    .line 231
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b(Lazz;)Lbab;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lazz;->d:Lbab;

    return-object v0
.end method

.method static synthetic c(Lazz;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Lazz;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lazz;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lbad;)Lbab;
    .locals 2
    .parameter

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lazz;->a(Lbad;J)Lbab;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbad;J)Lbab;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lazz;->b:Landroid/content/Context;

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    .line 114
    iget-object v1, p0, Lazz;->b:Landroid/content/Context;

    iget-object v2, p0, Lazz;->b:Landroid/content/Context;

    invoke-static {v2}, Lazz;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lazy;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hadRated == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lazz;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lazz;->a(Ljava/lang/String;)V

    .line 116
    if-eqz v0, :cond_d

    iget-boolean v2, p0, Lazz;->e:Z

    if-nez v2, :cond_d

    if-eqz v1, :cond_d

    .line 117
    sget-object v0, Lbaa;->b:[I

    invoke-virtual {p1}, Lbad;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    iget-object v0, p0, Lazz;->d:Lbab;

    if-nez v0, :cond_4

    .line 130
    const-string v0, "had showed all rate"

    invoke-direct {p0, v0}, Lazz;->a(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    .line 214
    :goto_1
    return-object v0

    .line 119
    :pswitch_0
    iget-wide v0, p0, Lazz;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lazz;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lazz;->d:Lbab;

    goto :goto_0

    :cond_0
    sget-object v0, Lbab;->c:Lbab;

    goto :goto_2

    :cond_1
    sget-object v0, Lbab;->a:Lbab;

    goto :goto_2

    .line 124
    :pswitch_1
    iget-wide v0, p0, Lazz;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lazz;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lazz;->d:Lbab;

    goto :goto_0

    :cond_2
    sget-object v0, Lbab;->d:Lbab;

    goto :goto_3

    :cond_3
    sget-object v0, Lbab;->b:Lbab;

    goto :goto_3

    .line 133
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show rate, type == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lazz;->d:Lbab;

    invoke-virtual {v1}, Lbab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", save time == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x3c

    div-long v1, p2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lazz;->a(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    sget-object v0, Lbaa;->a:[I

    iget-object v1, p0, Lazz;->d:Lbab;

    invoke-virtual {v1}, Lbab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 207
    const-string v0, "error rate type"

    invoke-direct {p0, v0}, Lazz;->a(Ljava/lang/String;)V

    .line 210
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 140
    :pswitch_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lazz;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lazz;->d:Lbab;

    invoke-virtual {v1}, Lbab;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iput-wide v2, p0, Lazz;->f:J

    .line 142
    const/4 v0, 0x1

    iget-object v1, p0, Lazz;->b:Landroid/content/Context;

    const-string v2, "rdc"

    const-string v3, "rdod"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 145
    iget-object v0, p0, Lazz;->d:Lbab;

    goto/16 :goto_1

    .line 149
    :pswitch_3
    iget-wide v0, p0, Lazz;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-gtz v0, :cond_6

    .line 150
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 152
    :cond_6
    iget-wide v0, p0, Lazz;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-gtz v0, :cond_7

    iget-wide v0, p0, Lazz;->f:J

    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-gtz v4, :cond_8

    :cond_7
    iget-wide v0, p0, Lazz;->g:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    iget-wide v0, p0, Lazz;->g:J

    sub-long v0, v2, v0

    const-wide/32 v4, 0x7b98a00

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    .line 155
    :cond_8
    iget-object v4, p0, Lazz;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lazz;->d:Lbab;

    invoke-virtual {v5}, Lbab;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 156
    iput-wide v2, p0, Lazz;->h:J

    .line 157
    const/4 v2, 0x1

    iget-object v3, p0, Lazz;->b:Landroid/content/Context;

    const-string v4, "rdc"

    const-string v5, "rdcsd"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 160
    const/4 v2, 0x1

    iget-object v3, p0, Lazz;->b:Landroid/content/Context;

    const-string v4, "rdc"

    const-string v5, "rdcsi"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 163
    iget-object v0, p0, Lazz;->d:Lbab;

    goto/16 :goto_1

    .line 168
    :pswitch_4
    const-wide/16 v0, 0x708

    cmp-long v0, p2, v0

    if-gez v0, :cond_9

    .line 169
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 171
    :cond_9
    iget-wide v0, p0, Lazz;->h:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-gtz v0, :cond_a

    iget-wide v0, p0, Lazz;->f:J

    sub-long v0, v2, v0

    const-wide/32 v4, 0x5265c00

    cmp-long v4, v0, v4

    if-gtz v4, :cond_b

    :cond_a
    iget-wide v0, p0, Lazz;->h:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    iget-wide v0, p0, Lazz;->h:J

    sub-long v0, v2, v0

    const-wide/32 v4, 0x7b98a00

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    .line 175
    :cond_b
    iget-object v4, p0, Lazz;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lazz;->d:Lbab;

    invoke-virtual {v5}, Lbab;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 176
    iput-wide v2, p0, Lazz;->g:J

    .line 177
    const/4 v2, 0x1

    iget-object v3, p0, Lazz;->b:Landroid/content/Context;

    const-string v4, "rdc"

    const-string v5, "rdoad"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 180
    const/4 v2, 0x1

    iget-object v3, p0, Lazz;->b:Landroid/content/Context;

    const-string v4, "rdc"

    const-string v5, "rdoai"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 183
    iget-object v0, p0, Lazz;->d:Lbab;

    goto/16 :goto_1

    .line 188
    :pswitch_5
    iget-wide v0, p0, Lazz;->h:J

    iget-wide v4, p0, Lazz;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    iget-wide v0, p0, Lazz;->h:J

    .line 190
    :goto_4
    iget-wide v4, p0, Lazz;->h:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    iget-wide v4, p0, Lazz;->g:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    sub-long v0, v2, v0

    const-wide/32 v4, 0xa4cb800

    cmp-long v4, v0, v4

    if-lez v4, :cond_5

    .line 193
    iget-object v4, p0, Lazz;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lazz;->d:Lbab;

    invoke-virtual {v5}, Lbab;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    iput-wide v2, p0, Lazz;->i:J

    .line 195
    const/4 v2, 0x1

    iget-object v3, p0, Lazz;->b:Landroid/content/Context;

    const-string v4, "rdc"

    const-string v5, "rdcsad"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 198
    const/4 v2, 0x1

    iget-object v3, p0, Lazz;->b:Landroid/content/Context;

    const-string v4, "rdc"

    const-string v5, "rdcsai"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 202
    iget-object v0, p0, Lazz;->d:Lbab;

    goto/16 :goto_1

    .line 188
    :cond_c
    iget-wide v0, p0, Lazz;->g:J

    goto :goto_4

    .line 212
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not show rate caused by network == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", had rated before == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lazz;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lazz;->a(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
