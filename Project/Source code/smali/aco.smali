.class Laco;
.super Ljava/lang/Thread;
.source "AppInfo2.java"


# instance fields
.field final synthetic a:Lacp;

.field final synthetic b:Lacn;


# direct methods
.method constructor <init>(Lacn;Lacp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Laco;->b:Lacn;

    iput-object p2, p0, Laco;->a:Lacp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Laco;->b:Lacn;

    invoke-static {v0}, Lacn;->a(Lacn;)Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v0, p0, Laco;->b:Lacn;

    iget-object v1, p0, Laco;->a:Lacp;

    invoke-static {v0, v1}, Lacn;->a(Lacn;Lacp;)V

    .line 217
    return-void
.end method
