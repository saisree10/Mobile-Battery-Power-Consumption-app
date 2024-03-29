.class public Lcom/tapjoy/TapjoyLog;
.super Ljava/lang/Object;
.source "TapjoyLog.java"


# static fields
.field private static final MAX_STRING_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "TapjoyLog"

.field private static logHistory:Ljava/util/ArrayList;

.field private static saveLog:Z

.field private static showLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    .line 17
    sput-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLogHistory()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 114
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    return-void
.end method

.method public static enableLogging(Z)V
    .locals 3
    .parameter

    .prologue
    .line 29
    const-string v0, "TapjoyLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLogging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    .line 31
    return-void
.end method

.method public static getLogHistory()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 84
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_1

    .line 89
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x1000

    if-gt v0, v1, :cond_2

    .line 91
    mul-int/lit16 v2, v0, 0x1000

    .line 92
    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x1000

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 94
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_3

    .line 104
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    return-void
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    return v0
.end method

.method public static saveLogHistory(Z)V
    .locals 2
    .parameter

    .prologue
    .line 47
    sput-boolean p0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    .line 49
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 160
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->showLog:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    sget-boolean v0, Lcom/tapjoy/TapjoyLog;->saveLog:Z

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/tapjoy/TapjoyLog;->logHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    return-void
.end method
