.class public Lakz;
.super Ljava/lang/Object;
.source "AppListActivity.java"


# instance fields
.field public a:Z

.field final synthetic b:Lcom/dianxinos/powermanager/menu/AppListActivity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/menu/AppListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lakz;->b:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lakz;->c:Ljava/lang/String;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lakz;->d:Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lakz;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dianxinos/powermanager/menu/AppListActivity;Laky;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lakz;-><init>(Lcom/dianxinos/powermanager/menu/AppListActivity;)V

    return-void
.end method

.method static synthetic a(Lakz;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lakz;->e:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lakz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lakz;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lakz;)Z
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-boolean v0, p0, Lakz;->f:Z

    return v0
.end method

.method static synthetic a(Lakz;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-boolean p1, p0, Lakz;->f:Z

    return p1
.end method

.method public static synthetic b(Lakz;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lakz;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lakz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lakz;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lakz;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lakz;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lakz;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lakz;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo: appname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , packagename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lakz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSys "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lakz;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0
.end method
