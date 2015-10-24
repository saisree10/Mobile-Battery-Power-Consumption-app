.class Lho;
.super Ljava/lang/Object;
.source "ADCheckManager.java"

# interfaces
.implements Lhk;


# instance fields
.field final synthetic a:Lhn;


# direct methods
.method constructor <init>(Lhn;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lho;->a:Lhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    iget-object v0, p0, Lho;->a:Lhn;

    invoke-static {v0}, Lhn;->a(Lhn;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_notification_flag"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lip;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 159
    iget-object v0, p0, Lho;->a:Lhn;

    iget-object v1, p0, Lho;->a:Lhn;

    invoke-static {v1}, Lhn;->a(Lhn;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lhn;->a(Lhn;Landroid/content/Context;)I

    .line 164
    :goto_0
    iget-object v0, p0, Lho;->a:Lhn;

    invoke-static {v0}, Lhn;->a(Lhn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhj;->a(Landroid/content/Context;)Lhj;

    move-result-object v0

    invoke-virtual {v0}, Lhj;->b()V

    .line 165
    return-void

    .line 161
    :cond_0
    const-string v0, "ADCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onTask Over set flag 1 result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lho;->a:Lhn;

    invoke-static {v0}, Lhn;->a(Lhn;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_notification_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lip;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
