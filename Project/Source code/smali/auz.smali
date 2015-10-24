.class Lauz;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lauu;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lauu;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lauz;->a:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lauz;->b:Landroid/view/View$OnClickListener;

    .line 177
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lauz;->a:Lauu;

    invoke-static {v0}, Lauu;->a(Lauu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lauz;->a:Lauu;

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 184
    :cond_0
    iget-object v0, p0, Lauz;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 185
    return-void
.end method
