.class public Lcom/roblox/client/util/a/c;
.super Lcom/roblox/client/util/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/util/a/a;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;II)V

    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/roblox/client/util/a/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/roblox/client/util/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/util/e;->a(Landroid/content/Context;)V

    .line 23
    :cond_0
    return-void
.end method
