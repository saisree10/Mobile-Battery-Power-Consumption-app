.class Lyu;
.super Ljava/lang/Object;
.source "MessageBoxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lyv;

.field final synthetic b:Lys;


# direct methods
.method constructor <init>(Lys;Lyv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lyu;->b:Lys;

    iput-object p2, p0, Lyu;->a:Lyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lyu;->b:Lys;

    iget-object v0, v0, Lys;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    iget-object v1, p0, Lyu;->a:Lyv;

    iget v1, v1, Lyv;->g:I

    invoke-static {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;I)V

    .line 312
    return-void
.end method
