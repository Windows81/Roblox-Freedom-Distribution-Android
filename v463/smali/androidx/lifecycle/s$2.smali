.class Landroidx/lifecycle/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t$a;


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

    .line 73
    iput-object p1, p0, Landroidx/lifecycle/s$2;->a:Landroidx/lifecycle/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/lifecycle/s$2;->a:Landroidx/lifecycle/s;

    invoke-virtual {v0}, Landroidx/lifecycle/s;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/lifecycle/s$2;->a:Landroidx/lifecycle/s;

    invoke-virtual {v0}, Landroidx/lifecycle/s;->b()V

    return-void
.end method
