.class Lamz;
.super Ljava/lang/Object;
.source "ModeSelectBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lamy;


# direct methods
.method constructor <init>(Lamy;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lamz;->a:Lamy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 264
    iget-object v0, p0, Lamz;->a:Lamy;

    invoke-static {v0}, Lamy;->a(Lamy;)Lauu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lamz;->a:Lamy;

    invoke-static {v0, v3}, Lamy;->a(Lamy;Z)Z

    .line 267
    iget-object v0, p0, Lamz;->a:Lamy;

    invoke-static {v0}, Lamy;->a(Lamy;)Lauu;

    move-result-object v0

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 269
    iget-object v0, p0, Lamz;->a:Lamy;

    iget-object v1, p0, Lamz;->a:Lamy;

    invoke-static {v1}, Lamy;->b(Lamy;)I

    move-result v1

    invoke-static {v0, v1}, Lamy;->a(Lamy;I)I

    .line 270
    iget-object v0, p0, Lamz;->a:Lamy;

    invoke-static {v0}, Lamy;->c(Lamy;)V

    .line 271
    iget-object v0, p0, Lamz;->a:Lamy;

    iget v0, v0, Lamy;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lamz;->a:Lamy;

    const-string v1, "widget14"

    const-string v2, "sm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lamz;->a:Lamy;

    iget v0, v0, Lamy;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lamz;->a:Lamy;

    const-string v1, "home"

    const-string v2, "sm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method
