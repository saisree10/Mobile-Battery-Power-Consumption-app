.class Lals;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lalu;

.field final synthetic b:Lalr;


# direct methods
.method constructor <init>(Lalr;Lalu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lals;->b:Lalr;

    iput-object p2, p0, Lals;->a:Lalu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lals;->b:Lalr;

    invoke-static {v0}, Lalr;->a(Lalr;)Lalt;

    move-result-object v0

    iget-object v1, p0, Lals;->a:Lalu;

    invoke-interface {v0, v1}, Lalt;->a(Lalu;)V

    .line 175
    iget-object v0, p0, Lals;->b:Lalr;

    invoke-static {v0}, Lalr;->b(Lalr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lals;->b:Lalr;

    invoke-virtual {v0}, Lalr;->b()V

    .line 177
    :cond_0
    return-void
.end method
