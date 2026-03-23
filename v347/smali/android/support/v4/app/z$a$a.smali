.class public final Landroid/support/v4/app/z$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/z$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private d:Z

.field private final e:Landroid/os/Bundle;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7

    .prologue
    .line 2841
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/z$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ae;Z)V

    .line 2842
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ae;Z)V
    .locals 2

    .prologue
    .line 2855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2830
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z$a$a;->d:Z

    .line 2856
    iput p1, p0, Landroid/support/v4/app/z$a$a;->a:I

    .line 2857
    invoke-static {p2}, Landroid/support/v4/app/z$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z$a$a;->b:Ljava/lang/CharSequence;

    .line 2858
    iput-object p3, p0, Landroid/support/v4/app/z$a$a;->c:Landroid/app/PendingIntent;

    .line 2859
    iput-object p4, p0, Landroid/support/v4/app/z$a$a;->e:Landroid/os/Bundle;

    .line 2860
    if-nez p5, :cond_0

    const/4 v0, 0x0

    .line 2861
    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/z$a$a;->f:Ljava/util/ArrayList;

    .line 2862
    iput-boolean p6, p0, Landroid/support/v4/app/z$a$a;->d:Z

    .line 2863
    return-void

    .line 2860
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2861
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ae;)Landroid/support/v4/app/z$a$a;
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Landroid/support/v4/app/z$a$a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/z$a$a;->f:Ljava/util/ArrayList;

    .line 2899
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/z$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/z$a$a;
    .locals 0

    .prologue
    .line 2913
    iput-boolean p1, p0, Landroid/support/v4/app/z$a$a;->d:Z

    .line 2914
    return-object p0
.end method

.method public a()Landroid/support/v4/app/z$a;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2932
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2933
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2934
    iget-object v0, p0, Landroid/support/v4/app/z$a$a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2935
    iget-object v0, p0, Landroid/support/v4/app/z$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ae;

    .line 2936
    invoke-virtual {v0}, Landroid/support/v4/app/ae;->e()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2937
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2939
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2943
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v6, v1

    .line 2945
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, v1

    .line 2947
    :goto_2
    new-instance v0, Landroid/support/v4/app/z$a;

    iget v1, p0, Landroid/support/v4/app/z$a$a;->a:I

    iget-object v2, p0, Landroid/support/v4/app/z$a$a;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/z$a$a;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/app/z$a$a;->e:Landroid/os/Bundle;

    iget-boolean v7, p0, Landroid/support/v4/app/z$a$a;->d:Z

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/z$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ae;[Landroid/support/v4/app/ae;Z)V

    return-object v0

    .line 2944
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/app/ae;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/ae;

    move-object v6, v0

    goto :goto_1

    .line 2946
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/app/ae;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/ae;

    move-object v5, v0

    goto :goto_2
.end method
