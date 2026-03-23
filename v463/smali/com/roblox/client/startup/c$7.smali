.class Lcom/roblox/client/startup/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/abtesting/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/startup/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/c;Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/roblox/client/startup/c$7;->b:Lcom/roblox/client/startup/c;

    iput-object p2, p0, Lcom/roblox/client/startup/c$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/roblox/client/startup/c$7;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;)V

    const-string v0, "FinishCheckABTestEnrollments"

    .line 375
    invoke-static {v0}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/roblox/client/startup/c$7;->b:Lcom/roblox/client/startup/c;

    invoke-static {v0}, Lcom/roblox/client/startup/c;->h(Lcom/roblox/client/startup/c;)V

    return-void
.end method
