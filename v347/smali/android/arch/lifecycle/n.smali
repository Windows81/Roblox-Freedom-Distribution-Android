.class public Landroid/arch/lifecycle/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/g;


# static fields
.field private static final i:Landroid/arch/lifecycle/n;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private final f:Landroid/arch/lifecycle/h;

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/arch/lifecycle/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/arch/lifecycle/n;

    invoke-direct {v0}, Landroid/arch/lifecycle/n;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/n;->i:Landroid/arch/lifecycle/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Landroid/arch/lifecycle/n;->a:I

    .line 55
    iput v0, p0, Landroid/arch/lifecycle/n;->b:I

    .line 57
    iput-boolean v1, p0, Landroid/arch/lifecycle/n;->c:Z

    .line 58
    iput-boolean v1, p0, Landroid/arch/lifecycle/n;->d:Z

    .line 61
    new-instance v0, Landroid/arch/lifecycle/h;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/h;-><init>(Landroid/arch/lifecycle/g;)V

    iput-object v0, p0, Landroid/arch/lifecycle/n;->f:Landroid/arch/lifecycle/h;

    .line 63
    new-instance v0, Landroid/arch/lifecycle/n$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/n$1;-><init>(Landroid/arch/lifecycle/n;)V

    iput-object v0, p0, Landroid/arch/lifecycle/n;->g:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Landroid/arch/lifecycle/n$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/n$2;-><init>(Landroid/arch/lifecycle/n;)V

    iput-object v0, p0, Landroid/arch/lifecycle/n;->h:Landroid/arch/lifecycle/o$a;

    .line 151
    return-void
.end method

.method static synthetic a(Landroid/arch/lifecycle/n;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/arch/lifecycle/n;->e()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/arch/lifecycle/n;->i:Landroid/arch/lifecycle/n;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/n;->b(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method static synthetic b(Landroid/arch/lifecycle/n;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/arch/lifecycle/n;->f()V

    return-void
.end method

.method static synthetic c(Landroid/arch/lifecycle/n;)Landroid/arch/lifecycle/o$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/arch/lifecycle/n;->h:Landroid/arch/lifecycle/o$a;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Landroid/arch/lifecycle/n;->b:I

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/n;->c:Z

    .line 139
    iget-object v0, p0, Landroid/arch/lifecycle/n;->f:Landroid/arch/lifecycle/h;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_PAUSE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)V

    .line 141
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Landroid/arch/lifecycle/n;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/arch/lifecycle/n;->c:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/arch/lifecycle/n;->f:Landroid/arch/lifecycle/h;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_STOP:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/n;->d:Z

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Landroid/arch/lifecycle/n;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/n;->a:I

    .line 106
    iget v0, p0, Landroid/arch/lifecycle/n;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/arch/lifecycle/n;->d:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Landroid/arch/lifecycle/n;->f:Landroid/arch/lifecycle/h;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_START:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/n;->d:Z

    .line 110
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Landroid/arch/lifecycle/n;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/n;->b:I

    .line 114
    iget v0, p0, Landroid/arch/lifecycle/n;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget-boolean v0, p0, Landroid/arch/lifecycle/n;->c:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Landroid/arch/lifecycle/n;->f:Landroid/arch/lifecycle/h;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_RESUME:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/n;->c:Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Landroid/arch/lifecycle/n;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/n;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/n;->e:Landroid/os/Handler;

    .line 155
    iget-object v0, p0, Landroid/arch/lifecycle/n;->f:Landroid/arch/lifecycle/h;

    sget-object v1, Landroid/arch/lifecycle/d$a;->ON_CREATE:Landroid/arch/lifecycle/d$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 157
    new-instance v1, Landroid/arch/lifecycle/n$3;

    invoke-direct {v1, p0}, Landroid/arch/lifecycle/n$3;-><init>(Landroid/arch/lifecycle/n;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 173
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 125
    iget v0, p0, Landroid/arch/lifecycle/n;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/n;->b:I

    .line 126
    iget v0, p0, Landroid/arch/lifecycle/n;->b:I

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/n;->e:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/n;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/arch/lifecycle/n;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/n;->a:I

    .line 133
    invoke-direct {p0}, Landroid/arch/lifecycle/n;->f()V

    .line 134
    return-void
.end method

.method public getLifecycle()Landroid/arch/lifecycle/d;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/arch/lifecycle/n;->f:Landroid/arch/lifecycle/h;

    return-object v0
.end method
