.class Lcom/roblox/engine/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/engine/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/roblox/engine/f;


# direct methods
.method constructor <init>(Lcom/roblox/engine/f;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/roblox/engine/f$1;->b:Lcom/roblox/engine/f;

    iput-object p2, p0, Lcom/roblox/engine/f$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/roblox/engine/f$1;->b:Lcom/roblox/engine/f;

    iget-object v1, p0, Lcom/roblox/engine/f$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/engine/f;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    return-void
.end method
