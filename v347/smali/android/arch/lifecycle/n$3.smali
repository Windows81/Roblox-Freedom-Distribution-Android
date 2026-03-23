.class Landroid/arch/lifecycle/n$3;
.super Landroid/arch/lifecycle/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/n;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/arch/lifecycle/n;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/n;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Landroid/arch/lifecycle/n$3;->a:Landroid/arch/lifecycle/n;

    invoke-direct {p0}, Landroid/arch/lifecycle/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 160
    invoke-static {p1}, Landroid/arch/lifecycle/o;->b(Landroid/app/Activity;)Landroid/arch/lifecycle/o;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/n$3;->a:Landroid/arch/lifecycle/n;

    invoke-static {v1}, Landroid/arch/lifecycle/n;->c(Landroid/arch/lifecycle/n;)Landroid/arch/lifecycle/o$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/o;->a(Landroid/arch/lifecycle/o$a;)V

    .line 161
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/arch/lifecycle/n$3;->a:Landroid/arch/lifecycle/n;

    invoke-virtual {v0}, Landroid/arch/lifecycle/n;->c()V

    .line 166
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/arch/lifecycle/n$3;->a:Landroid/arch/lifecycle/n;

    invoke-virtual {v0}, Landroid/arch/lifecycle/n;->d()V

    .line 171
    return-void
.end method
