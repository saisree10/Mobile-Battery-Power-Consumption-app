.class public Lsr;
.super Ljava/lang/Object;
.source "BaseAppInfo.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field private l:Landroid/content/pm/PackageInfo;

.field private m:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lsr;->g:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->h:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lsr;->a:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lsr;->g:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->h:Ljava/lang/String;

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lsr;->m:Landroid/content/pm/PackageManager;

    .line 50
    :try_start_0
    iget-object v0, p0, Lsr;->m:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lsr;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lsr;->l:Landroid/content/pm/PackageInfo;

    .line 51
    invoke-direct {p0}, Lsr;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lsr;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Luc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->c:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lsr;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Luc;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->d:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lsr;->l:Landroid/content/pm/PackageInfo;

    const-string v1, "firstInstallTime"

    invoke-static {v0, v1}, Luc;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->e:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lsr;->l:Landroid/content/pm/PackageInfo;

    const-string v1, "lastUpdateTime"

    invoke-static {v0, v1}, Luc;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->f:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lsr;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->i:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lsr;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Luc;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->j:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lsr;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lsr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "stat.BaseAppInfo"

    const-string v2, "NameNotFoundException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Lsr;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lsr;->a:Ljava/lang/String;

    iput-object v0, p0, Lsr;->a:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lsr;->b:Ljava/lang/String;

    iput-object v0, p0, Lsr;->b:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lsr;->c:Ljava/lang/String;

    iput-object v0, p0, Lsr;->c:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lsr;->d:Ljava/lang/String;

    iput-object v0, p0, Lsr;->d:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lsr;->e:Ljava/lang/String;

    iput-object v0, p0, Lsr;->e:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lsr;->f:Ljava/lang/String;

    iput-object v0, p0, Lsr;->f:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lsr;->g:Ljava/lang/String;

    iput-object v0, p0, Lsr;->g:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lsr;->h:Ljava/lang/String;

    iput-object v0, p0, Lsr;->h:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lsr;->i:Ljava/lang/String;

    iput-object v0, p0, Lsr;->i:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lsr;->j:Ljava/lang/String;

    iput-object v0, p0, Lsr;->j:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lsr;->k:Ljava/lang/String;

    iput-object v0, p0, Lsr;->k:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lsr;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 94
    iget-object v1, p0, Lsr;->l:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    .line 95
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lsr;->l:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lsr;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lsr;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 143
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsr;->f:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lsr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lsr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lsr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lsr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lsr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lsr;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lsr;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lsr;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lsr;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lsr;->k:Ljava/lang/String;

    return-object v0
.end method
