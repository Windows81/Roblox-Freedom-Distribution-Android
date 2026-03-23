.class Landroidx/lifecycle/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/s;


# direct methods
.method constructor <init>(Landroidx/lifecycle/s;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroidx/lifecycle/s$1;->a:Landroidx/lifecycle/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/lifecycle/s$1;->a:Landroidx/lifecycle/s;

    invoke-virtual {v0}, Landroidx/lifecycle/s;->e()V

    .line 68
    iget-object v0, p0, Landroidx/lifecycle/s$1;->a:Landroidx/lifecycle/s;

    invoke-virtual {v0}, Landroidx/lifecycle/s;->f()V

    return-void
.end method
