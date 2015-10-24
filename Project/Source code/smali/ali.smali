.class public Lali;
.super Ljava/lang/Object;
.source "AppWhiteListActivity.java"


# instance fields
.field public a:Z

.field final synthetic b:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lali;->b:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lali;->c:Ljava/lang/String;

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lali;->d:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lali;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;Lalf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lali;-><init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V

    return-void
.end method

.method static synthetic a(Lali;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lali;->e:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic a(Lali;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lali;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lali;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lali;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lali;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lali;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lali;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lali;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lali;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lali;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo: appname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lali;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , packagename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lali;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSys "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lali;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method
