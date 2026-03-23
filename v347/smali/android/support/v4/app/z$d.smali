.class public abstract Landroid/support/v4/app/z$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field protected a:Landroid/support/v4/app/z$c;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1565
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/z$d;->d:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1622
    return-void
.end method

.method public a(Landroid/support/v4/app/y;)V
    .locals 0

    .prologue
    .line 1590
    return-void
.end method

.method public a(Landroid/support/v4/app/z$c;)V
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/z$d;->a:Landroid/support/v4/app/z$c;

    if-eq v0, p1, :cond_0

    .line 1569
    iput-object p1, p0, Landroid/support/v4/app/z$d;->a:Landroid/support/v4/app/z$c;

    .line 1570
    iget-object v0, p0, Landroid/support/v4/app/z$d;->a:Landroid/support/v4/app/z$c;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Landroid/support/v4/app/z$d;->a:Landroid/support/v4/app/z$c;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/z$c;->a(Landroid/support/v4/app/z$d;)Landroid/support/v4/app/z$c;

    .line 1574
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v4/app/y;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1597
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroid/support/v4/app/y;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1605
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/support/v4/app/y;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1613
    const/4 v0, 0x0

    return-object v0
.end method
