.class Lcom/roblox/client/q/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/roblox/client/q/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/roblox/client/q/c;

    invoke-direct {v0}, Lcom/roblox/client/q/c;-><init>()V

    sput-object v0, Lcom/roblox/client/q/c$a;->a:Lcom/roblox/client/q/c;

    return-void
.end method
