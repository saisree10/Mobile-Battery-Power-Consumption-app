.class Lyt;
.super Ljava/lang/Object;
.source "MessageBoxActivity.java"

# interfaces
.implements Lyg;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lyv;

.field final synthetic c:Lys;


# direct methods
.method constructor <init>(Lys;Landroid/view/View;Lyv;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lyt;->c:Lys;

    iput-object p2, p0, Lyt;->a:Landroid/view/View;

    iput-object p3, p0, Lyt;->b:Lyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lyt;->c:Lys;

    iget-object v0, v0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    iget-object v1, p0, Lyt;->a:Landroid/view/View;

    iget-object v2, p0, Lyt;->b:Lyv;

    iget v2, v2, Lyv;->g:I

    invoke-static {v0, v1, v2}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;Landroid/view/View;I)V

    .line 290
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lyt;->c:Lys;

    iget-object v0, v0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    .line 295
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lyt;->c:Lys;

    iget-object v0, v0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    iget-object v1, p0, Lyt;->b:Lyv;

    iget v1, v1, Lyv;->g:I

    invoke-static {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->a(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;I)V

    .line 300
    return-void
.end method
