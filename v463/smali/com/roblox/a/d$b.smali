.class public Lcom/roblox/a/d$b;
.super Lcom/roblox/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/roblox/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/roblox/a/d;",
            ">;)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/roblox/a/a;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/roblox/a/d$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(ZLorg/json/JSONObject;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/roblox/a/d$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/a/d;

    invoke-virtual {p0}, Lcom/roblox/a/d$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/roblox/a/d;->a(Ljava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/roblox/a/d$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/a/d;

    invoke-virtual {v0}, Lcom/roblox/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
