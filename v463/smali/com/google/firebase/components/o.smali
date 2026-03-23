.class final synthetic Lcom/google/firebase/components/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/Map$Entry;

.field private final b:Lcom/google/firebase/a/a;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Lcom/google/firebase/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/o;->a:Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/firebase/components/o;->b:Lcom/google/firebase/a/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/components/o;->a:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/firebase/components/o;->b:Lcom/google/firebase/a/a;

    invoke-static {v0, v1}, Lcom/google/firebase/components/n;->a(Ljava/util/Map$Entry;Lcom/google/firebase/a/a;)V

    return-void
.end method
