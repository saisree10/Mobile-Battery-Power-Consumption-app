.class public Laoa;
.super Ljava/lang/Object;
.source "CmsPullerConfig.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private final b:Ljava/lang/String;

.field private c:Lcom/dianxinos/powermanager/PowerMangerApplication;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "cmspulling_time_"

    iput-object v0, p0, Laoa;->b:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    iput-object v0, p0, Laoa;->c:Lcom/dianxinos/powermanager/PowerMangerApplication;

    .line 26
    iget-object v0, p0, Laoa;->c:Lcom/dianxinos/powermanager/PowerMangerApplication;

    const-string v1, "CmsPullerConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Laoa;->a:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 4
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Laoa;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmspulling_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Laoa;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmspulling_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 37
    return-void
.end method
