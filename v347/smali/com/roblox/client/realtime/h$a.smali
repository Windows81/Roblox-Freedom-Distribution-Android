.class Lcom/roblox/client/realtime/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/realtime/h;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/roblox/client/realtime/h;Z)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/roblox/client/realtime/h$a;->a:Lcom/roblox/client/realtime/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-boolean p2, p0, Lcom/roblox/client/realtime/h$a;->b:Z

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/roblox/client/realtime/h$a;->a:Lcom/roblox/client/realtime/h;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/roblox/client/realtime/h$a;->b:Z

    invoke-static {v0, v1, v2}, Lcom/roblox/client/realtime/h;->a(Lcom/roblox/client/realtime/h;ZZ)V

    .line 165
    return-void
.end method
