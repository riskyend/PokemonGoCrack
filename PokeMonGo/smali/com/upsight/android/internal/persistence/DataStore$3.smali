.class Lcom/upsight/android/internal/persistence/DataStore$3;
.super Ljava/lang/Object;
.source "DataStore.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/persistence/DataStore;->fetch(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/persistence/DataStore;

.field final synthetic val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V
    .registers 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/DataStore$3;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    iput-object p2, p0, Lcom/upsight/android/internal/persistence/DataStore$3;->val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/DataStore$3;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "ts":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/DataStore$3;->val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/upsight/android/persistence/UpsightDataStoreListener;->onSuccess(Ljava/lang/Object;)V

    .line 111
    return-void
.end method
