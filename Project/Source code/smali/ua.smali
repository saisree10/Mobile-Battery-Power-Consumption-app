.class Lua;
.super Ljava/lang/Object;
.source "UserReturnStatService.java"


# instance fields
.field final synthetic a:Ltz;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Long;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltz;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lua;->a:Ltz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lua;->b:Ljava/lang/Integer;

    .line 84
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lua;->c:Ljava/lang/Long;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lua;->d:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic b(Lua;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lua;->c:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic c(Lua;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lua;->b:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lua;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iput-object p1, p0, Lua;->b:Ljava/lang/Integer;

    .line 104
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lua;->c:Ljava/lang/Long;

    .line 114
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lua;->d:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public a(Lua;)Z
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lua;->c:Ljava/lang/Long;

    iget-object v1, p1, Lua;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lua;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lua;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lua;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lua;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const-string v0, "[firstInstallTime:%d versionCode:%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lua;->c:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lua;->b:Ljava/lang/Integer;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
