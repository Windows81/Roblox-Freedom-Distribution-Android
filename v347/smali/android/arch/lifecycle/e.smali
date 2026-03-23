.class Landroid/arch/lifecycle/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/e$c;,
        Landroid/arch/lifecycle/e$a;,
        Landroid/arch/lifecycle/e$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/arch/lifecycle/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Landroid/arch/lifecycle/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Landroid/arch/lifecycle/e$b;

    invoke-direct {v1}, Landroid/arch/lifecycle/e$b;-><init>()V

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/d$a;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/arch/lifecycle/e;->b(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/d$a;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/h;Landroid/arch/lifecycle/d$b;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/arch/lifecycle/e;->b(Landroid/support/v4/app/h;Landroid/arch/lifecycle/d$b;)V

    return-void
.end method

.method private static a(Landroid/support/v4/app/l;Landroid/arch/lifecycle/d$b;)V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/support/v4/app/l;->f()Ljava/util/List;

    move-result-object v0

    .line 122
    if-nez v0, :cond_1

    .line 134
    :cond_0
    return-void

    .line 125
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 126
    if-eqz v0, :cond_2

    .line 129
    invoke-static {v0, p1}, Landroid/arch/lifecycle/e;->a(Ljava/lang/Object;Landroid/arch/lifecycle/d$b;)V

    .line 130
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/arch/lifecycle/e;->a(Landroid/support/v4/app/l;Landroid/arch/lifecycle/d$b;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Landroid/arch/lifecycle/d$b;)V
    .locals 1

    .prologue
    .line 137
    instance-of v0, p0, Landroid/arch/lifecycle/i;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Landroid/arch/lifecycle/i;

    invoke-interface {p0}, Landroid/arch/lifecycle/i;->a()Landroid/arch/lifecycle/h;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$b;)V

    .line 141
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/d$a;)V
    .locals 1

    .prologue
    .line 149
    instance-of v0, p0, Landroid/arch/lifecycle/i;

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, Landroid/arch/lifecycle/i;

    invoke-interface {p0}, Landroid/arch/lifecycle/i;->a()Landroid/arch/lifecycle/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/h;->a(Landroid/arch/lifecycle/d$a;)V

    .line 152
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/h;Landroid/arch/lifecycle/d$b;)V
    .locals 1

    .prologue
    .line 144
    invoke-static {p0, p1}, Landroid/arch/lifecycle/e;->a(Ljava/lang/Object;Landroid/arch/lifecycle/d$b;)V

    .line 145
    invoke-virtual {p0}, Landroid/support/v4/app/h;->e()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/arch/lifecycle/e;->a(Landroid/support/v4/app/l;Landroid/arch/lifecycle/d$b;)V

    .line 146
    return-void
.end method
