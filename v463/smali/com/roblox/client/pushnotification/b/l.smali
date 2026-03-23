.class public Lcom/roblox/client/pushnotification/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/roblox/client/pushnotification/b/l;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/roblox/client/pushnotification/b/l;->b:Landroid/content/Context;

    .line 18
    iput-boolean p3, p0, Lcom/roblox/client/pushnotification/b/l;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/roblox/client/pushnotification/b/l;->c:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/roblox/client/pushnotification/b/l;->b:Landroid/content/Context;

    return-object v0
.end method
