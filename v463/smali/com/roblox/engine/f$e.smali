.class Lcom/roblox/engine/f$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/engine/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field public static final a:Lcom/roblox/engine/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/roblox/engine/f;->d()Lcom/roblox/engine/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/engine/f$a;->a()Lcom/roblox/engine/f;

    move-result-object v0

    sput-object v0, Lcom/roblox/engine/f$e;->a:Lcom/roblox/engine/f;

    return-void
.end method
