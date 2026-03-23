.class public abstract Landroidx/core/app/i$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field protected a:Landroidx/core/app/i$c;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1666
    iput-boolean v0, p0, Landroidx/core/app/i$d;->d:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/core/app/h;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/core/app/i$c;)V
    .locals 1

    .line 1669
    iget-object v0, p0, Landroidx/core/app/i$d;->a:Landroidx/core/app/i$c;

    if-eq v0, p1, :cond_0

    .line 1670
    iput-object p1, p0, Landroidx/core/app/i$d;->a:Landroidx/core/app/i$c;

    if-eqz p1, :cond_0

    .line 1672
    invoke-virtual {p1, p0}, Landroidx/core/app/i$c;->a(Landroidx/core/app/i$d;)Landroidx/core/app/i$c;

    :cond_0
    return-void
.end method

.method public b(Landroidx/core/app/h;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroidx/core/app/h;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroidx/core/app/h;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
