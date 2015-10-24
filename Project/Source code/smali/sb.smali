.class public Lsb;
.super Ljava/lang/Object;
.source "DXCore.java"


# static fields
.field private static volatile a:Lsb;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lsb;->b:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lsb;->b:Landroid/content/Context;

    invoke-static {v0}, Lgu;->a(Landroid/content/Context;)Lgu;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lgu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "stat.DXCore"

    const-string v1, "The app is in silent period!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsb;->c:Z

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsb;->c:Z

    goto :goto_0
.end method

.method static synthetic a(Lsb;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lsb;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_aip_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "_appinfo_"

    goto :goto_0
.end method

.method static synthetic a(Lsb;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lsb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lsb;
    .locals 2
    .parameter

    .prologue
    .line 43
    const-class v1, Lsb;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lsb;->a:Lsb;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lsb;

    invoke-direct {v0, p0}, Lsb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lsb;->a:Lsb;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lsb;->a:Lsb;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;IIILorg/json/JSONObject;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    new-instance v0, Lsc;

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lsc;-><init>(Lsb;Lorg/json/JSONObject;ILjava/lang/String;II)V

    .line 250
    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Lgw;->a(I)Z

    .line 264
    return-void
.end method

.method public a(Ljava/lang/String;IIILjava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-boolean v1, p0, Lsb;->c:Z

    if-nez v1, :cond_1

    .line 111
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "stat.DXCore"

    const-string v2, "The service is not start up!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 117
    :cond_2
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_3
    invoke-static {p2}, Lsv;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 125
    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_4
    invoke-static {p3}, Lsx;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 131
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid report policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_5
    invoke-static {p4}, Lsy;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 138
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    :cond_6
    if-nez p5, :cond_7

    .line 145
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "stat.DXCore"

    const-string v2, "Invalid value which should be required."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    :cond_7
    invoke-static {p2, p5}, Lsw;->a(ILjava/lang/Object;)I

    move-result v2

    .line 152
    invoke-static {v2}, Lsw;->a(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 153
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data type for data policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    :cond_8
    iget-object v0, p0, Lsb;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Ltf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    new-instance v0, Ltf;

    const/4 v7, 0x0

    move v1, p3

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Ltf;-><init>(IIILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lsb;->b:Landroid/content/Context;

    invoke-static {v1}, Lse;->a(Landroid/content/Context;)Lse;

    move-result-object v1

    invoke-virtual {v1, v0}, Lse;->a(Ltf;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;IILjava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lsb;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-static {p2, p3}, Lud;->a(Ljava/lang/String;Ljava/lang/Number;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lsb;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public a(Ltx;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    iget-boolean v0, p0, Lsb;->c:Z

    if-nez v0, :cond_1

    .line 168
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "stat.DXCore"

    const-string v1, "The service is not start up!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_1
    new-instance v0, Ltf;

    invoke-direct {v0, p1, p2}, Ltf;-><init>(Ltx;Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lsb;->b:Landroid/content/Context;

    invoke-static {v1}, Lse;->a(Landroid/content/Context;)Lse;

    move-result-object v1

    invoke-virtual {v1, v0}, Lse;->a(Ltf;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 78
    new-instance v0, Ltx;

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v4, p0, Lsb;->b:Landroid/content/Context;

    const-string v5, "start"

    invoke-static {v4, v5}, Ltf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Ltx;-><init>(IIILjava/lang/String;I)V

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsb;->a(Ltx;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 84
    new-instance v0, Ltz;

    iget-object v1, p0, Lsb;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltz;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    .line 86
    new-instance v0, Ltx;

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v4, p0, Lsb;->b:Landroid/content/Context;

    const-string v5, "alive"

    invoke-static {v4, v5}, Ltf;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Ltx;-><init>(IIILjava/lang/String;I)V

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsb;->a(Ltx;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
