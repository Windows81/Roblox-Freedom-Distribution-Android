.class Lcom/roblox/client/signup/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/signup/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/roblox/client/components/RbxEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/roblox/client/components/RbxEditText;)V
    .locals 1

    .prologue
    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1496
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/roblox/client/signup/a$a;->a:Ljava/lang/ref/WeakReference;

    .line 1497
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/roblox/client/signup/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/components/RbxEditText;

    .line 1502
    if-eqz v0, :cond_0

    .line 1503
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/roblox/client/components/RbxEditText;->b(Ljava/lang/String;)V

    .line 1505
    :cond_0
    return-void
.end method
