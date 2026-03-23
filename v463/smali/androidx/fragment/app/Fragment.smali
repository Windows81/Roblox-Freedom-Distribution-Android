.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$a;,
        Landroidx/fragment/app/Fragment$c;,
        Landroidx/fragment/app/Fragment$b;,
        Landroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field private static final a:Landroidx/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final j:Ljava/lang/Object;


# instance fields
.field A:I

.field B:Landroidx/fragment/app/h;

.field C:Landroidx/fragment/app/f;

.field D:Landroidx/fragment/app/h;

.field E:Landroidx/fragment/app/i;

.field F:Landroidx/lifecycle/x;

.field G:Landroidx/fragment/app/Fragment;

.field H:I

.field I:I

.field J:Ljava/lang/String;

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:Landroid/view/ViewGroup;

.field S:Landroid/view/View;

.field T:Landroid/view/View;

.field U:Z

.field V:Z

.field W:Landroidx/fragment/app/Fragment$a;

.field X:Z

.field Y:Z

.field Z:F

.field aa:Landroid/view/LayoutInflater;

.field ab:Z

.field ac:Landroidx/lifecycle/k;

.field ad:Landroidx/lifecycle/k;

.field ae:Landroidx/lifecycle/j;

.field af:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Landroidx/lifecycle/j;",
            ">;"
        }
    .end annotation
.end field

.field k:I

.field l:Landroid/os/Bundle;

.field m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Boolean;

.field o:I

.field p:Ljava/lang/String;

.field q:Landroid/os/Bundle;

.field r:Landroidx/fragment/app/Fragment;

.field s:I

.field t:I

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroidx/c/g;

    invoke-direct {v0}, Landroidx/c/g;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->a:Landroidx/c/g;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Landroidx/fragment/app/Fragment;->o:I

    .line 120
    iput v0, p0, Landroidx/fragment/app/Fragment;->s:I

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    .line 218
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->V:Z

    .line 247
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    .line 254
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->af:Landroidx/lifecycle/p;

    return-void
.end method

.method private a()Landroidx/fragment/app/Fragment$a;
    .locals 1

    .line 2747
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2748
    new-instance v0, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    .line 2750
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 5

    const-string v0, " empty constructor that is public"

    const-string v1, ": make sure class name exists, is public, and has an"

    const-string v2, "Unable to instantiate fragment "

    .line 437
    :try_start_0
    sget-object v3, Landroidx/fragment/app/Fragment;->a:Landroidx/c/g;

    invoke-virtual {v3, p1}, Landroidx/c/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 441
    sget-object p0, Landroidx/fragment/app/Fragment;->a:Landroidx/c/g;

    invoke-virtual {p0, p1, v3}, Landroidx/c/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    new-array v4, p0, [Ljava/lang/Class;

    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_1

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 446
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 465
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 462
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 458
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 454
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p0

    .line 450
    new-instance p2, Landroidx/fragment/app/Fragment$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/Fragment$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 480
    :try_start_0
    sget-object v0, Landroidx/fragment/app/Fragment;->a:Landroidx/c/g;

    invoke-virtual {v0, p1}, Landroidx/c/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 484
    sget-object p0, Landroidx/fragment/app/Fragment;->a:Landroidx/c/g;

    invoke-virtual {p0, p1, v0}, Landroidx/c/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_0
    const-class p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 927
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final B()Z
    .locals 1

    .line 939
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    return v0
.end method

.method public final C()Z
    .locals 1

    .line 982
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    return v0
.end method

.method public D()Landroidx/f/a/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1065
    invoke-static {p0}, Landroidx/f/a/a;->a(Landroidx/lifecycle/j;)Landroidx/f/a/a;

    move-result-object v0

    return-object v0
.end method

.method public E()Landroid/view/View;
    .locals 1

    .line 1577
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    return-object v0
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x1

    .line 1632
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x1

    .line 1689
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public H()V
    .locals 2

    const/4 v0, 0x1

    .line 1728
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 1729
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1730
    invoke-virtual {v1}, Landroidx/fragment/app/c;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1731
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->F:Landroidx/lifecycle/x;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1732
    invoke-virtual {v1}, Landroidx/lifecycle/x;->a()V

    :cond_1
    return-void
.end method

.method I()V
    .locals 2

    const/4 v0, -0x1

    .line 1743
    iput v0, p0, Landroidx/fragment/app/Fragment;->o:I

    const/4 v0, 0x0

    .line 1744
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->p:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1745
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->u:Z

    .line 1746
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->v:Z

    .line 1747
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->w:Z

    .line 1748
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->x:Z

    .line 1749
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 1750
    iput v1, p0, Landroidx/fragment/app/Fragment;->A:I

    .line 1751
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    .line 1752
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    .line 1753
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    .line 1754
    iput v1, p0, Landroidx/fragment/app/Fragment;->H:I

    .line 1755
    iput v1, p0, Landroidx/fragment/app/Fragment;->I:I

    .line 1756
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->J:Ljava/lang/String;

    .line 1757
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->K:Z

    .line 1758
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->L:Z

    .line 1759
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->N:Z

    return-void
.end method

.method public J()V
    .locals 0

    return-void
.end method

.method public K()Ljava/lang/Object;
    .locals 1

    .line 1961
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1964
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public L()Ljava/lang/Object;
    .locals 2

    .line 2000
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2003
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public M()Ljava/lang/Object;
    .locals 1

    .line 2040
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2043
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public N()Ljava/lang/Object;
    .locals 2

    .line 2078
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2081
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public O()Ljava/lang/Object;
    .locals 1

    .line 2111
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2114
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public P()Ljava/lang/Object;
    .locals 2

    .line 2149
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2152
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->O()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public Q()Z
    .locals 1

    .line 2178
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    .line 2179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public R()Z
    .locals 1

    .line 2203
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    .line 2204
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public S()V
    .locals 2

    .line 2252
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/h;->m:Landroidx/fragment/app/f;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2254
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    iget-object v1, v1, Landroidx/fragment/app/h;->m:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->h()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2255
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->m:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->h()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2262
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->T()V

    goto :goto_1

    .line 2253
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    :goto_1
    return-void
.end method

.method T()V
    .locals 3

    .line 2272
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2275
    iput-boolean v2, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    .line 2276
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    .line 2277
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iput-object v1, v2, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 2280
    invoke-interface {v1}, Landroidx/fragment/app/Fragment$c;->a()V

    :cond_1
    return-void
.end method

.method U()V
    .locals 3

    .line 2382
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    .line 2385
    new-instance v0, Landroidx/fragment/app/h;

    invoke-direct {v0}, Landroidx/fragment/app/h;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    .line 2386
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    new-instance v2, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/f;Landroidx/fragment/app/d;Landroidx/fragment/app/Fragment;)V

    return-void

    .line 2383
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method V()V
    .locals 3

    .line 2471
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2472
    invoke-virtual {v0}, Landroidx/fragment/app/h;->p()V

    .line 2473
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Z

    :cond_0
    const/4 v0, 0x3

    .line 2475
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2476
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2477
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()V

    .line 2478
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v0, :cond_3

    .line 2482
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2483
    invoke-virtual {v0}, Landroidx/fragment/app/h;->s()V

    .line 2485
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2486
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2487
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    :cond_2
    return-void

    .line 2479
    :cond_3
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method W()V
    .locals 3

    .line 2492
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {v0}, Landroidx/fragment/app/h;->p()V

    .line 2494
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Z

    :cond_0
    const/4 v0, 0x4

    .line 2496
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2497
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->F()V

    .line 2499
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v0, :cond_3

    .line 2503
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2504
    invoke-virtual {v0}, Landroidx/fragment/app/h;->t()V

    .line 2505
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Z

    .line 2507
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2508
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2509
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    :cond_2
    return-void

    .line 2500
    :cond_3
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method X()V
    .locals 1

    .line 2514
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2515
    invoke-virtual {v0}, Landroidx/fragment/app/h;->p()V

    :cond_0
    return-void
.end method

.method Y()V
    .locals 1

    .line 2541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2542
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2543
    invoke-virtual {v0}, Landroidx/fragment/app/h;->y()V

    :cond_0
    return-void
.end method

.method Z()V
    .locals 3

    .line 2636
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2639
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2640
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2641
    invoke-virtual {v0}, Landroidx/fragment/app/h;->u()V

    :cond_1
    const/4 v0, 0x3

    .line 2643
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2644
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2645
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->G()V

    .line 2646
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v0, :cond_2

    return-void

    .line 2647
    :cond_2
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 2372
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2375
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2376
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 782
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 795
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method final a(ILandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 509
    iput p1, p0, Landroidx/fragment/app/Fragment;->o:I

    if-eqz p2, :cond_0

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroidx/fragment/app/Fragment;->o:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->p:Ljava/lang/String;

    goto :goto_0

    .line 513
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroidx/fragment/app/Fragment;->o:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->p:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 1

    .line 2816
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1435
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1397
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1418
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 1419
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/f;->f()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1421
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 1422
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 1380
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 1381
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/f;->f()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1383
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 1384
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1073
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1100
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not attached to Activity"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .line 1081
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 1084
    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1082
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v9, p0

    .line 1113
    iget-object v0, v9, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 1116
    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/f;->a(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 1114
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2534
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2535
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2536
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .line 2812
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment$SavedState;)V
    .locals 1

    .line 619
    iget v0, p0, Landroidx/fragment/app/Fragment;->o:I

    if-gez v0, :cond_1

    if-eqz p1, :cond_0

    .line 622
    iget-object v0, p1, Landroidx/fragment/app/Fragment$SavedState;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/Fragment$SavedState;->a:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    return-void

    .line 620
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Landroidx/fragment/app/Fragment$c;)V
    .locals 2

    .line 2730
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    .line 2731
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2734
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2735
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2738
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    if-eqz v0, :cond_3

    .line 2739
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$c;

    :cond_3
    if-eqz p1, :cond_4

    .line 2742
    invoke-interface {p1}, Landroidx/fragment/app/Fragment$c;->b()V

    :cond_4
    return-void
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2294
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2295
    iget v0, p0, Landroidx/fragment/app/Fragment;->H:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 2296
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2297
    iget v0, p0, Landroidx/fragment/app/Fragment;->I:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 2298
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->J:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    .line 2300
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->o:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 2301
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 2302
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->A:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2303
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 2304
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 2305
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 2306
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->x:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2307
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 2308
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 2309
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 2310
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->O:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2311
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    .line 2312
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->N:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 2313
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->V:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2314
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2316
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2318
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-eqz v0, :cond_1

    .line 2319
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2322
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 2323
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2326
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->q:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2327
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->q:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2329
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2330
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2331
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2333
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2335
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2337
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_6

    .line 2338
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 2339
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    iget v0, p0, Landroidx/fragment/app/Fragment;->t:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2342
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ae()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2343
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ae()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2345
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2346
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->R:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2348
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2349
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2351
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->T:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2352
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2354
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aj()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2355
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 2356
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aj()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 2359
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->al()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2362
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2363
    invoke-static {p0}, Landroidx/f/a/a;->a(Landroidx/lifecycle/j;)Landroidx/f/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/f/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2365
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_d

    .line 2366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/h;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method aa()V
    .locals 3

    .line 2653
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2654
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2656
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2657
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2658
    invoke-virtual {v0}, Landroidx/fragment/app/h;->v()V

    :cond_1
    const/4 v0, 0x2

    .line 2660
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2661
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2662
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i()V

    .line 2663
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v0, :cond_2

    return-void

    .line 2664
    :cond_2
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ab()V
    .locals 3

    .line 2670
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2671
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2673
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2674
    invoke-virtual {v0}, Landroidx/fragment/app/h;->w()V

    :cond_1
    const/4 v0, 0x1

    .line 2676
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2677
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2678
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j()V

    .line 2679
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v1, :cond_2

    .line 2687
    invoke-static {p0}, Landroidx/f/a/a;->a(Landroidx/lifecycle/j;)Landroidx/f/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/f/a/a;->a()V

    .line 2688
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    return-void

    .line 2680
    :cond_2
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ac()V
    .locals 3

    .line 2692
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2693
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2694
    invoke-virtual {v0}, Landroidx/fragment/app/h;->x()V

    :cond_0
    const/4 v0, 0x0

    .line 2696
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2697
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2698
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->ab:Z

    .line 2699
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->H()V

    .line 2700
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2704
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    return-void

    .line 2701
    :cond_1
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ad()V
    .locals 3

    const/4 v0, 0x0

    .line 2708
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2709
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->f()V

    const/4 v0, 0x0

    .line 2710
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroid/view/LayoutInflater;

    .line 2711
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz v1, :cond_2

    .line 2719
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v1, :cond_1

    .line 2720
    iget-boolean v2, p0, Landroidx/fragment/app/Fragment;->N:Z

    if-eqz v2, :cond_0

    .line 2724
    invoke-virtual {v1}, Landroidx/fragment/app/h;->x()V

    .line 2725
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    goto :goto_0

    .line 2721
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 2712
    :cond_2
    new-instance v0, Landroidx/fragment/app/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ae()I
    .locals 1

    .line 2754
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2757
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->d:I

    return v0
.end method

.method af()I
    .locals 1

    .line 2768
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2771
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->e:I

    return v0
.end method

.method ag()I
    .locals 1

    .line 2784
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2787
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->f:I

    return v0
.end method

.method ah()Landroidx/core/app/n;
    .locals 1

    .line 2791
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2794
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->o:Landroidx/core/app/n;

    return-object v0
.end method

.method ai()Landroidx/core/app/n;
    .locals 1

    .line 2798
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2801
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->p:Landroidx/core/app/n;

    return-object v0
.end method

.method aj()Landroid/view/View;
    .locals 1

    .line 2805
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2808
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    return-object v0
.end method

.method ak()Landroid/animation/Animator;
    .locals 1

    .line 2820
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2823
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method al()I
    .locals 1

    .line 2827
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2830
    :cond_0
    iget v0, v0, Landroidx/fragment/app/Fragment$a;->c:I

    return v0
.end method

.method am()Z
    .locals 1

    .line 2838
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2841
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    return v0
.end method

.method an()Z
    .locals 1

    .line 2845
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2848
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->s:Z

    return v0
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method b(I)V
    .locals 1

    .line 2761
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2764
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->d:I

    return-void
.end method

.method b(II)V
    .locals 1

    .line 2775
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2778
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    .line 2779
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->e:I

    .line 2780
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->W:Landroidx/fragment/app/Fragment$a;

    iput p2, p1, Landroidx/fragment/app/Fragment$a;->f:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1496
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 1497
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->j(Landroid/os/Bundle;)V

    .line 1498
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz p1, :cond_0

    .line 1499
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->b(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1500
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->q()V

    :cond_0
    return-void
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 2425
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2426
    invoke-virtual {v0}, Landroidx/fragment/app/h;->p()V

    :cond_0
    const/4 v0, 0x1

    .line 2428
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->z:Z

    .line 2429
    new-instance v0, Landroidx/fragment/app/Fragment$3;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ae:Landroidx/lifecycle/j;

    const/4 v0, 0x0

    .line 2438
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    .line 2439
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2442
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ae:Landroidx/lifecycle/j;

    invoke-interface {p1}, Landroidx/lifecycle/j;->g()Landroidx/lifecycle/g;

    .line 2444
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->af:Landroidx/lifecycle/p;

    iget-object p2, p0, Landroidx/fragment/app/Fragment;->ae:Landroidx/lifecycle/j;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2446
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    if-nez p1, :cond_2

    .line 2450
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ae:Landroidx/lifecycle/j;

    :goto_0
    return-void

    .line 2447
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 2558
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2559
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2561
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x1

    .line 2563
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2564
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/h;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1277
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method c(I)V
    .locals 1

    .line 2834
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->c:I

    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    .line 2572
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2573
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2575
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;)V

    const/4 v1, 0x1

    .line 2577
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2578
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2585
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-nez v0, :cond_1

    .line 2586
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->O:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    if-eqz v0, :cond_0

    .line 2587
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2591
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2592
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1595
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    .line 2615
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-nez v0, :cond_1

    .line 2616
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    if-eqz v0, :cond_0

    .line 2617
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/Menu;)V

    .line 2619
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2620
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2601
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    if-nez v0, :cond_1

    .line 2602
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2605
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2606
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 978
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->M:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 525
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1768
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 2

    .line 493
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 494
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->T:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 498
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V

    .line 499
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz p1, :cond_2

    .line 503
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->S:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 504
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    :cond_1
    return-void

    .line 500
    :cond_2
    new-instance p1, Landroidx/fragment/app/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Z)V
    .locals 1

    .line 1011
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->P:Z

    if-eq v0, p1, :cond_0

    .line 1012
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->P:Z

    .line 1013
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->O:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1014
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->c()V

    :cond_0
    return-void
.end method

.method public g()Landroidx/lifecycle/g;
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    return-object v0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1

    .line 580
    iget v0, p0, Landroidx/fragment/app/Fragment;->o:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k_()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already active and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 583
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->q:Landroid/os/Bundle;

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1036
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->V:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->ab:Z

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/h;->b(Landroidx/fragment/app/Fragment;)V

    .line 1040
    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->V:Z

    .line 1041
    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->U:Z

    .line 1042
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1045
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/Fragment;->n:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1308
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1309
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->aa:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1621
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 532
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1326
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-eqz p1, :cond_0

    .line 1330
    invoke-virtual {p1}, Landroidx/fragment/app/f;->b()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroidx/fragment/app/g;

    .line 1332
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->A()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/h/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 1327
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1699
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1719
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method j(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    .line 1518
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1521
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    .line 1522
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->U()V

    .line 1524
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->E:Landroidx/fragment/app/i;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->a(Landroid/os/Parcelable;Landroidx/fragment/app/i;)V

    const/4 p1, 0x0

    .line 1525
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->E:Landroidx/fragment/app/i;

    .line 1526
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->q()V

    :cond_1
    return-void
.end method

.method j(Z)V
    .locals 1

    .line 2520
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->h(Z)V

    .line 2521
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2522
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Z)V

    :cond_0
    return-void
.end method

.method public k()Landroidx/lifecycle/x;
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->F:Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Landroidx/lifecycle/x;

    invoke-direct {v0}, Landroidx/lifecycle/x;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->F:Landroidx/lifecycle/x;

    .line 333
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->F:Landroidx/lifecycle/x;

    return-object v0

    .line 328
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1611
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method k(Z)V
    .locals 1

    .line 2527
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->i(Z)V

    .line 2528
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2529
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Z)V

    :cond_0
    return-void
.end method

.method public final k_()Z
    .locals 1

    .line 604
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 607
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/h;->g()Z

    move-result v0

    return v0
.end method

.method l(Landroid/os/Bundle;)V
    .locals 2

    .line 2409
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {v0}, Landroidx/fragment/app/h;->p()V

    :cond_0
    const/4 v0, 0x1

    .line 2412
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v1, 0x0

    .line 2413
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2414
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 2415
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->ab:Z

    .line 2416
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz p1, :cond_1

    .line 2420
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/k;

    sget-object v0, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    return-void

    .line 2417
    :cond_1
    new-instance p1, Landroidx/fragment/app/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method l(Z)V
    .locals 1

    .line 2852
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$a;->s:Z

    return-void
.end method

.method final l()Z
    .locals 1

    .line 518
    iget v0, p0, Landroidx/fragment/app/Fragment;->A:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->J:Ljava/lang/String;

    return-object v0
.end method

.method m(Landroid/os/Bundle;)V
    .locals 2

    .line 2455
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2456
    invoke-virtual {v0}, Landroidx/fragment/app/h;->p()V

    :cond_0
    const/4 v0, 0x2

    .line 2458
    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v0, 0x0

    .line 2459
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 2460
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 2461
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    if-eqz p1, :cond_2

    .line 2465
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz p1, :cond_1

    .line 2466
    invoke-virtual {p1}, Landroidx/fragment/app/h;->r()V

    :cond_1
    return-void

    .line 2462
    :cond_2
    new-instance p1, Landroidx/fragment/app/p;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n()Landroid/os/Bundle;
    .locals 1

    .line 592
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method n(Landroid/os/Bundle;)V
    .locals 2

    .line 2626
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 2627
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 2628
    invoke-virtual {v0}, Landroidx/fragment/app/h;->o()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 2630
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 1679
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1865
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/c;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    .line 1705
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    return-void
.end method

.method public p()Landroid/content/Context;
    .locals 1

    .line 683
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/f;->g()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final q()Landroid/content/Context;
    .locals 3

    .line 694
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final r()Landroidx/fragment/app/c;
    .locals 1

    .line 710
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/f;->f()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    :goto_0
    return-object v0
.end method

.method public final s()Landroid/content/res/Resources;
    .locals 1

    .line 760
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1092
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final t()Landroidx/fragment/app/g;
    .locals 1

    .line 812
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 538
    invoke-static {p0, v0}, Landroidx/core/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 539
    iget v1, p0, Landroidx/fragment/app/Fragment;->o:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget v1, p0, Landroidx/fragment/app/Fragment;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    :cond_0
    iget v1, p0, Landroidx/fragment/app/Fragment;->H:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget v1, p0, Landroidx/fragment/app/Fragment;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->J:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroidx/fragment/app/g;
    .locals 2

    .line 844
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    if-nez v0, :cond_3

    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->U()V

    .line 846
    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 847
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->t()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 849
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->s()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 851
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->r()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 853
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->q()V

    .line 856
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    return-object v0
.end method

.method v()Landroidx/fragment/app/g;
    .locals 1

    .line 865
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public final w()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 874
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final x()Z
    .locals 1

    .line 881
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->v:Z

    return v0
.end method

.method public final z()Z
    .locals 2

    .line 918
    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
