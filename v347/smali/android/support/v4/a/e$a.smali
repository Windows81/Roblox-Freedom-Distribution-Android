.class public final Landroid/support/v4/a/e$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/a/e;


# direct methods
.method public constructor <init>(Landroid/support/v4/a/e;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/v4/a/e$a;->a:Landroid/support/v4/a/e;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/a/e$a;->a:Landroid/support/v4/a/e;

    invoke-virtual {v0}, Landroid/support/v4/a/e;->A()V

    .line 67
    return-void
.end method
