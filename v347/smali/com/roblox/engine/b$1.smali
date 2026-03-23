.class Lcom/roblox/engine/b$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/engine/b;-><init>(Landroid/app/Activity;Landroid/view/SurfaceView;Lcom/roblox/engine/b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/engine/b;


# direct methods
.method constructor <init>(Lcom/roblox/engine/b;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/roblox/engine/b$1;->a:Lcom/roblox/engine/b;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/roblox/engine/b$1;->a:Lcom/roblox/engine/b;

    invoke-static {v0}, Lcom/roblox/engine/b;->a(Lcom/roblox/engine/b;)V

    .line 198
    return-void
.end method
